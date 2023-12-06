// Header.jsx
import React from 'react';
import Image from 'next/image';

const Header = () => {
  return (
    <div className="flex justify-right items-center p-6 bg-white text-tec border-b-4 border-tec">
        <div>
          <Image 
            className='rounded-xl'
            src={'/img/tecnm.png'}
            alt='Logo del ITE'
            width={260}
            height={260}/>
        </div>

        <div> 
          <h1 className="text-3xl text-center font-bold ml-52 uppercase">Instituto Tecnológico de Ensenada</h1>
        </div>

        <div>
          <Image 
            className='rounded-xl ml-[280px] '
            src={'/img/ite.png'}
            alt='Logo del ITE'
            width={100}
            height={100}/>
        </div>
    </div>
  );
};

export default Header;
